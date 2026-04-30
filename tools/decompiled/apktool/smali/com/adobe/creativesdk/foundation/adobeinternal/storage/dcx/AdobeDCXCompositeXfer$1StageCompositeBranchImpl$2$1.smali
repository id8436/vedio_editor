.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

.field final synthetic val$hashError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$localMD5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5250
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$hashError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$localMD5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 5253
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$hashError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 5254
    const-string/jumbo v7, "accessLock"

    monitor-enter v7

    .line 5255
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$asyncError:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 5256
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$localMD5:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$publishedMD5:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$localMD5:Ljava/lang/String;

    .line 5257
    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5259
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$stagedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    const-string/jumbo v1, "unmodified"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 5260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$stagedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$publishedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setLength(J)V

    .line 5261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$stagedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$publishedMD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setMd5(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5263
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$stagedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$stagedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5268
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$pendingComponents:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 5269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$pendingComponents:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_2

    .line 5270
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$finalStagedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$finalStagedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$publishedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$remixData:Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$finalRenditionComponentIds:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->access$2000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 5271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;->val$asyncError:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2$1;->val$hashError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v2, v0, v1

    .line 5274
    :cond_2
    monitor-exit v7

    .line 5275
    return-void

    .line 5264
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 5265
    goto :goto_0

    .line 5274
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
