.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;
.super Ljava/lang/Object;
.source "AdobeDCXSyncGroupMonitor.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

.field final synthetic val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field final synthetic val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 698
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 699
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->mDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;->assetWasUpdated(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V

    .line 701
    const/4 v0, 0x1

    .line 717
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    if-eq v0, v1, :cond_1

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->mDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;->assetWasUpdated(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingRequestCount:I

    if-nez v1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 726
    return-void

    .line 709
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    goto :goto_0

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$7;->val$oldChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    goto :goto_0
.end method
