.class Lcom/adobe/sync/SyncController$10$1;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/sync/SyncController$10;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController$10;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1593
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1594
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1595
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v2, v2, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v3, v3, Lcom/adobe/sync/SyncController$10;->val$type:Ljava/lang/String;

    const-string/jumbo v4, "primary"

    iget-object v5, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v5, v5, Lcom/adobe/sync/SyncController$10;->val$dcxPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v6, v6, Lcom/adobe/sync/SyncController$10;->val$mediaRefNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    iget-object v7, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v7, v7, Lcom/adobe/sync/SyncController$10;->val$ucid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1597
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$1;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :goto_0
    return-void

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
