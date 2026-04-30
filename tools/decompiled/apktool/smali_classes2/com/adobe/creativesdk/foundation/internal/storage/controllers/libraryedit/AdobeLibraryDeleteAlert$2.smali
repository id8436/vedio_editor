.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;
.super Ljava/lang/Object;
.source "AdobeLibraryDeleteAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditInProgress(Z)V

    .line 66
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditStarted(Z)V

    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_PUBLIC_LIBRARY_COMP_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2$1;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;)V

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->createSession(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->startEditSession()V

    .line 83
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->startEditSession()V

    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryDeleteAlert;->dismiss()V

    .line 86
    return-void
.end method
