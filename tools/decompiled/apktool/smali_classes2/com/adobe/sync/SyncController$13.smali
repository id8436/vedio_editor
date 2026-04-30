.class Lcom/adobe/sync/SyncController$13;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/SyncController;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$projectPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/adobe/sync/SyncController$13;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$13;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$13;->val$projectPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1820
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$13;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->acceptPush()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :goto_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$13;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$13;->val$projectPath:Ljava/lang/String;

    sget-object v2, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PUSH_ACCEPTED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v0, v1, v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1825
    iget-object v0, p0, Lcom/adobe/sync/SyncController$13;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1826
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    iget-object v0, p0, Lcom/adobe/sync/SyncController$13;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Error in accepting pushed branch."

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
