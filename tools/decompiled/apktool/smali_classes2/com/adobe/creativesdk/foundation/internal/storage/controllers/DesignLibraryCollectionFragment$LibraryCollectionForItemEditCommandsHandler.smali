.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;
.source "DesignLibraryCollectionFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    return-void
.end method


# virtual methods
.method protected getCommandsListToRegister()Ljava/util/EnumSet;
    .locals 2
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
    .line 265
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    .line 278
    :cond_1
    return-void
.end method
