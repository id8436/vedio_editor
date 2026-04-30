.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$3;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryEditSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 340
    return-void
.end method
