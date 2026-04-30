.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryEditSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

.field final synthetic val$libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->val$libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->val$libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 151
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->markSelfUnShare()V

    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->setEditSucceeded(Z)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditCompletionHandled(Z)V

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;->onComplete()V

    .line 155
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->setEditSucceeded(Z)V

    .line 161
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditCompletionHandled(Z)V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;->onComplete()V

    .line 163
    return-void
.end method
