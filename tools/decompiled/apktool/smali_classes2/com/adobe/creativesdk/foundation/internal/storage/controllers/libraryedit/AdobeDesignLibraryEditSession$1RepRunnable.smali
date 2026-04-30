.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryEditSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field _rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

.field final synthetic val$addedElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$oldComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$reps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/util/List;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$oldComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$addedElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$reps:Ljava/util/List;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 260
    new-instance v9, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-direct {v9, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)V

    .line 262
    new-instance v10, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 263
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v11

    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$oldComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$1;

    invoke-direct {v2, p0, v10, v11, v9}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$2;

    invoke-direct {v3, p0, v10, v11, v9}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    .line 321
    :goto_0
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    :goto_1
    iget-boolean v0, v9, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;->isDone:Z

    if-nez v0, :cond_2

    .line 326
    :try_start_0
    invoke-interface {v11}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 303
    :cond_0
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$addedElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getContentURL()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 312
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$108(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)I
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :goto_3
    invoke-interface {v11}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    iput-boolean v12, v9, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1EnclosedObj;->isDone:Z

    .line 318
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 308
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$addedElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->_rep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 310
    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo v3, "data"

    iget-object v0, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 313
    :catch_1
    move-exception v0

    .line 314
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->printStackTrace()V

    goto :goto_3

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    monitor-enter v1

    .line 334
    :try_start_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)I

    move-result v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$reps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 335
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->access$302(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;Z)Z

    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$1RepRunnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    :cond_3
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
