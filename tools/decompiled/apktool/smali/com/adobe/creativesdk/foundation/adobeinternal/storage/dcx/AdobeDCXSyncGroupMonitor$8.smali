.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;
.super Ljava/lang/Object;
.source "AdobeDCXSyncGroupMonitor.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field final synthetic val$cachedChildren:Ljava/util/ArrayList;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field final synthetic val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$cachedChildren:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 760
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 762
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->mDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$that:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;->assetWasAdded(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V

    .line 765
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$cachedChildren:Ljava/util/ArrayList;

    monitor-enter v1

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$cachedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$newChild:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_0
    if-eqz p2, :cond_1

    .line 771
    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v0, :cond_1

    .line 773
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 774
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 775
    const/16 v1, 0x258

    if-ne v0, v1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingEtagReset:Z

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 813
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$wrapperObj:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingRequestCount:I

    if-nez v1, :cond_2

    .line 814
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 818
    return-void

    .line 767
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 816
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$8;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 817
    throw v0
.end method
