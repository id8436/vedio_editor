.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2$1;
.super Ljava/lang/Object;
.source "AdobeLibraryDeleteAlert.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string/jumbo v2, "LIBRARY_COMP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COMP_EDIT_COMPLTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 79
    return-void
.end method
