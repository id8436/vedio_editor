.class public interface abstract Lcom/adobe/sync/SyncController$ISyncControllerInterface;
.super Ljava/lang/Object;
.source "SyncController.java"


# virtual methods
.method public abstract collectCloudSyncWithAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract currentOpenProjectPath()Ljava/lang/String;
.end method

.method public abstract projectsUpdated()V
.end method

.method public abstract pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
.end method

.method public abstract pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
.end method

.method public abstract pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
.end method

.method public abstract pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
.end method

.method public abstract refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V
.end method

.method public abstract removeProjectFromList(Ljava/lang/String;)V
.end method

.method public abstract resolveConflict(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
.end method

.method public abstract setLowDiskSpaceSyncStop(Z)V
.end method

.method public abstract showLowDiskSpaceAlert()V
.end method

.method public abstract syncHasFinished()V
.end method

.method public abstract syncHasStarted()V
.end method

.method public abstract trackComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
.end method
