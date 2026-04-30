.class Lcom/adobe/sync/SyncController$7;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/SyncController;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$compositeID:Ljava/lang/String;

.field final synthetic val$projectPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/adobe/sync/SyncController$7;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$7;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$7;->val$projectPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/sync/SyncController$7;->val$compositeID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/adobe/sync/SyncController$7;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$7;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-interface {v0, v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->resolveConflict(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1195
    iget-object v0, p0, Lcom/adobe/sync/SyncController$7;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$7;->val$projectPath:Ljava/lang/String;

    sget-object v2, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v0, v1, v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1196
    iget-object v0, p0, Lcom/adobe/sync/SyncController$7;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1197
    iget-object v0, p0, Lcom/adobe/sync/SyncController$7;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$7;->val$compositeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$1100(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1198
    return-void
.end method
