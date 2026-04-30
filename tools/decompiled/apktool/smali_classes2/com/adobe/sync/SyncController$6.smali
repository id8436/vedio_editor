.class Lcom/adobe/sync/SyncController$6;
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
    .line 1152
    iput-object p1, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$6;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$6;->val$compositeID:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/sync/SyncController$6;->val$projectPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$6;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    .line 1158
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1157
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resolvePullWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1164
    if-nez v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Pull succeeded but accept failed - Composite = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/sync/SyncController$6;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1169
    :try_start_1
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPulledBranch()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1181
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    iget-object v1, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: some problem in accepting pulled branch : Error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1161
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :catch_1
    move-exception v0

    .line 1171
    iget-object v1, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: some problem in discarding pulled branch : Error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$6;->val$projectPath:Ljava/lang/String;

    sget-object v2, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v0, v1, v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1179
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1180
    iget-object v0, p0, Lcom/adobe/sync/SyncController$6;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$6;->val$compositeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$1100(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method
