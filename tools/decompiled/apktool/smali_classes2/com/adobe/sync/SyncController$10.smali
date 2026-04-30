.class Lcom/adobe/sync/SyncController$10;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/SyncController;

.field final synthetic val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

.field final synthetic val$componentId:Ljava/lang/String;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$compositeId:Ljava/lang/String;

.field final synthetic val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$dcxPath:Ljava/lang/String;

.field final synthetic val$mediaRefNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$properties:Lorg/json/JSONObject;

.field final synthetic val$request:Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$ucid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lorg/json/JSONObject;Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;)V
    .locals 0

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/sync/SyncController$10;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p5, p0, Lcom/adobe/sync/SyncController$10;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    iput-object p6, p0, Lcom/adobe/sync/SyncController$10;->val$name:Ljava/lang/String;

    iput-object p7, p0, Lcom/adobe/sync/SyncController$10;->val$type:Ljava/lang/String;

    iput-object p8, p0, Lcom/adobe/sync/SyncController$10;->val$dcxPath:Ljava/lang/String;

    iput-object p9, p0, Lcom/adobe/sync/SyncController$10;->val$mediaRefNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    iput-object p10, p0, Lcom/adobe/sync/SyncController$10;->val$ucid:Ljava/lang/String;

    iput-object p11, p0, Lcom/adobe/sync/SyncController$10;->val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p12, p0, Lcom/adobe/sync/SyncController$10;->val$properties:Lorg/json/JSONObject;

    iput-object p13, p0, Lcom/adobe/sync/SyncController$10;->val$request:Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManager;->removeAllLargeComponentComposites()V

    .line 1654
    return-void
.end method

.method public onCompletion()V
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManager;->getLargeComponentsComposites()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$1200(Lcom/adobe/sync/SyncController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/sync/SyncController$10$1;

    invoke-direct {v1, p0}, Lcom/adobe/sync/SyncController$10$1;-><init>(Lcom/adobe/sync/SyncController$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/sync/ComponentManager;->removeLargeComponentComposites(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1605
    if-nez v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$1200(Lcom/adobe/sync/SyncController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/sync/SyncController$10$2;

    invoke-direct {v1, p0}, Lcom/adobe/sync/SyncController$10$2;-><init>(Lcom/adobe/sync/SyncController$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1619
    :cond_1
    return-void
.end method

.method public onError()V
    .locals 4

    .prologue
    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->val$properties:Lorg/json/JSONObject;

    const-string/jumbo v1, "state"

    const-string/jumbo v2, "waiting"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1625
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$1200(Lcom/adobe/sync/SyncController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/sync/SyncController$10$3;

    invoke-direct {v1, p0}, Lcom/adobe/sync/SyncController$10$3;-><init>(Lcom/adobe/sync/SyncController$10;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1642
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error writing waiting state after s3 upload failure for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 6

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10;->val$request:Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10;->val$request:Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;->getCompletedUnitCount()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;->setCompletedUnitCount(J)V

    .line 1649
    return-void
.end method
