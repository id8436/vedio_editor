.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$op:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$compositeID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerRequestsBytesConsumedByCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;->bytesConsumed:J

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$op:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;->delegateReturned:Z

    .line 1400
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$delegateResultCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1404
    return-void

    .line 1402
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1403
    throw v0
.end method
