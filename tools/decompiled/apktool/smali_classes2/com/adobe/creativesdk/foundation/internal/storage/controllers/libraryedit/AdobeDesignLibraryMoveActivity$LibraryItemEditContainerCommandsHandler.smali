.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;
.source "AdobeDesignLibraryMoveActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$1;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;)V

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
    .line 200
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_ELEMENT_EDIT_MOVE_OPERATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_ELEMENT_EDIT_MOVE_OPERATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method
