.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationEditCommandsHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;
.source "MobileCreationPackageCollectionFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$1;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V

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
    .line 292
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V

    .line 303
    :cond_0
    return-void
.end method
