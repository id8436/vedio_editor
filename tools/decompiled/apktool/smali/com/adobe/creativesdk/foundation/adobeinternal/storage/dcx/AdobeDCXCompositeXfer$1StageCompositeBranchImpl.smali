.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"


# instance fields
.field final synthetic val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isUpdate:Z

.field final synthetic val$journal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;

.field final synthetic val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

.field final synthetic val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

.field final synthetic val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

.field final synthetic val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

.field final synthetic val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field final synthetic val$stageCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;

.field final synthetic val$stageDirPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4925
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageDirPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$handler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$journal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;

    iput-boolean p9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$isUpdate:Z

    iput-object p10, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;

    iput-object p11, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iput-object p12, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 4925
    invoke-direct/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->finalizeStagedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 0

    .prologue
    .line 4925
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->doStage(Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    return-void
.end method

.method private doStage(Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 25

    .prologue
    .line 5036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 5292
    :cond_0
    :goto_0
    return-void

    .line 5039
    :cond_1
    const/4 v12, 0x0

    .line 5040
    const/16 v17, 0x0

    .line 5043
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageDirPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 5046
    const/4 v5, 0x0

    .line 5047
    if-nez v17, :cond_1a

    .line 5049
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCopyWithoutLocal()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v5

    .line 5050
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->verify()V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v5

    .line 5056
    :goto_1
    if-eqz v13, :cond_13

    if-nez v17, :cond_13

    .line 5058
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageDirPath:Ljava/lang/String;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {v13, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    move-object/from16 v7, v17

    .line 5063
    :goto_2
    if-nez v7, :cond_19

    .line 5064
    invoke-virtual {v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v10

    .line 5067
    const/4 v6, 0x0

    .line 5070
    const/4 v5, 0x0

    .line 5073
    invoke-virtual {v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v16

    .line 5074
    invoke-virtual {v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getAllComponents()Ljava/util/List;

    move-result-object v4

    .line 5075
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 5079
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "rendition"

    invoke-static {v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5080
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getParentId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5081
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "image/jpeg"

    invoke-static {v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5082
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "image/png"

    invoke-static {v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v8, 0x1

    .line 5084
    :goto_4
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v14

    .line 5085
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getComponentId()Ljava/lang/String;

    move-result-object v18

    .line 5087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v19

    .line 5088
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$isUpdate:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v4

    .line 5089
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getState()Ljava/lang/String;

    move-result-object v20

    .line 5091
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v15

    .line 5092
    const/4 v9, 0x0

    .line 5094
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 5098
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getUCIDOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 5100
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingComponentFile:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v8, "CP publish does not yet support unmanaged components."

    invoke-static {v4, v8, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    move-object/from16 v24, v5

    move-object v5, v6

    move-object v6, v4

    move-object/from16 v4, v24

    :cond_3
    :goto_7
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .line 5227
    goto/16 :goto_3

    .line 5051
    :catch_0
    move-exception v4

    move-object v13, v5

    move-object/from16 v17, v4

    .line 5052
    goto/16 :goto_1

    .line 5059
    :catch_1
    move-exception v4

    move-object v7, v4

    .line 5060
    goto/16 :goto_2

    .line 5082
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 5088
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 5095
    :catch_2
    move-exception v11

    .line 5096
    sget-object v21, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v22, "AdobeDCXCompositeXfer.doStage"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v11}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 5102
    :cond_6
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 5103
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getSourceHrefOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    if-nez v9, :cond_7

    .line 5106
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingComponentFile:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v8, "CP publish does not yet support server-to-server copy."

    invoke-static {v4, v8, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    move-object/from16 v24, v5

    move-object v5, v6

    move-object v6, v4

    move-object/from16 v4, v24

    goto :goto_7

    .line 5109
    :cond_7
    const-string/jumbo v9, "pendingDelete"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "committedDelete"

    .line 5110
    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5112
    :cond_8
    invoke-virtual {v10, v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_7

    .line 5114
    :cond_9
    if-eqz v4, :cond_b

    .line 5116
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setEtag(Ljava/lang/String;)V

    .line 5117
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setVersion(Ljava/lang/String;)V

    .line 5123
    :goto_8
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "/META-INF/metadata.xml"

    invoke-static {v9, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 5125
    const-string/jumbo v9, "modified"

    invoke-virtual {v14, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 5129
    const/4 v9, 0x0

    invoke-virtual {v13, v9, v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setSourceHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 5133
    const/4 v15, 0x0

    .line 5134
    const/4 v11, 0x0

    .line 5136
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    move-object/from16 v24, v9

    move-object v9, v15

    move-object/from16 v15, v24

    .line 5140
    :goto_9
    if-eqz v15, :cond_16

    .line 5141
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageDirPath:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5143
    invoke-static {v15, v11}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageFileUtils;->copyFileAtomicallyFrom(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5145
    if-nez v9, :cond_16

    .line 5147
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v10, v14, v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v11

    .line 5148
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    move-object v11, v9

    move-object v9, v14

    .line 5155
    :goto_a
    if-nez v8, :cond_f

    .line 5158
    if-eqz v4, :cond_e

    .line 5159
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v8

    .line 5160
    if-eqz v8, :cond_15

    .line 5161
    const-string/jumbo v11, "unmodified"

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 5162
    invoke-virtual/range {v19 .. v19}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v11

    .line 5164
    if-eqz v11, :cond_a

    invoke-static {v8, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 5166
    const-string/jumbo v8, "unmodified"

    invoke-virtual {v9, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setState(Ljava/lang/String;)V

    .line 5167
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setLength(J)V

    :cond_a
    move-object v4, v9

    :goto_b
    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    .line 5216
    :goto_c
    if-eqz v9, :cond_14

    .line 5218
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v10, v9, v6, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v6, v7

    .line 5223
    :goto_d
    if-eqz v6, :cond_3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object v5, v4

    .line 5229
    :goto_e
    if-nez v17, :cond_13

    .line 5231
    if-eqz v5, :cond_12

    .line 5233
    const-string/jumbo v4, "accessLock"

    .line 5234
    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    aput v6, v11, v4

    .line 5235
    const/4 v4, 0x1

    new-array v6, v4, [Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    const/4 v7, 0x0

    aput-object v7, v6, v4

    .line 5237
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 5238
    const-string/jumbo v5, "sourceFile"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 5239
    const-string/jumbo v5, "stagedComponent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    .line 5240
    const-string/jumbo v5, "publishedComponent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 5241
    const-string/jumbo v5, "publishedMD5"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5245
    const/16 v20, 0x0

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;

    move-object/from16 v5, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    invoke-direct/range {v4 .. v16}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;[ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;)V

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashOfFile(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V

    goto :goto_f

    .line 5119
    :cond_b
    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setEtag(Ljava/lang/String;)V

    .line 5120
    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5137
    :catch_3
    move-exception v9

    move-object v15, v11

    .line 5138
    goto/16 :goto_9

    .line 5149
    :catch_4
    move-exception v9

    move-object v11, v9

    move-object v9, v14

    .line 5150
    goto/16 :goto_a

    .line 5169
    :cond_c
    const-string/jumbo v11, "modified"

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v15, :cond_15

    .line 5172
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 5174
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v20

    cmp-long v11, v18, v20

    if-nez v11, :cond_15

    .line 5180
    if-nez v5, :cond_d

    .line 5181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5183
    :cond_d
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5184
    const-string/jumbo v14, "stagedComponent"

    invoke-interface {v11, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5185
    const-string/jumbo v9, "publishedComponent"

    invoke-interface {v11, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5186
    const-string/jumbo v4, "publishedMD5"

    invoke-interface {v11, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5187
    const-string/jumbo v4, "sourceFile"

    invoke-interface {v11, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5188
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5190
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 5198
    :cond_e
    if-eqz v11, :cond_11

    .line 5200
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingComponentFile:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v7, 0x0

    invoke-static {v4, v7, v11}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v17

    move-object/from16 v16, v6

    .line 5201
    goto/16 :goto_e

    .line 5208
    :cond_f
    if-nez v6, :cond_10

    .line 5209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5211
    :cond_10
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    .line 5219
    :catch_5
    move-exception v7

    move-object v6, v7

    .line 5220
    goto/16 :goto_d

    :cond_12
    move-object/from16 v11, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    .line 5281
    invoke-direct/range {v11 .. v17}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->finalizeStagedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 5287
    :cond_13
    :goto_10
    if-eqz v17, :cond_0

    .line 5288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;

    const/4 v5, 0x0

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v7, 0x0

    .line 5289
    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v6

    .line 5288
    invoke-interface {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_0

    :cond_14
    move-object v6, v7

    goto/16 :goto_d

    :cond_15
    move-object v4, v9

    goto/16 :goto_b

    :cond_16
    move-object v11, v9

    move-object v9, v14

    goto/16 :goto_a

    :cond_17
    move-object v9, v14

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_c

    :cond_18
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_e

    :cond_19
    move-object/from16 v17, v7

    goto :goto_10

    :cond_1a
    move-object v13, v5

    goto/16 :goto_1
.end method

.method private finalizeStagedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4929
    if-nez p6, :cond_1

    .line 4930
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    move-result-object v1

    .line 4931
    const-string/jumbo v0, "published"

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->appendHistoryEvent(Ljava/lang/String;)V

    .line 4932
    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->licenseType:Ljava/lang/String;

    iget-object v2, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->attributionURL:Ljava/lang/String;

    iget-object v3, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->attributionName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addLicenseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    :try_start_0
    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->originURL:Ljava/lang/String;

    iget-object v2, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->manageUIURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addOriginUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4939
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

    invoke-interface {v0, v1, p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4941
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)V

    .line 4945
    :cond_1
    if-eqz p5, :cond_8

    .line 4947
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 4948
    const/4 v2, 0x0

    .line 4949
    const/4 v1, 0x0

    .line 4950
    const/4 v0, 0x0

    .line 4951
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4952
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v6

    .line 4953
    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4954
    :cond_2
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 4956
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createMetadataForRenditionWithType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v1, v2

    .line 4962
    :goto_2
    :try_start_2
    invoke-virtual {v4, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 4966
    :goto_3
    if-eqz v2, :cond_5

    move-object v0, v2

    .line 4974
    :goto_4
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    if-eqz v1, :cond_3

    .line 4976
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageDirPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4977
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4979
    :try_start_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    invoke-interface {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;->stageResourcesAt(Ljava/lang/String;)Z
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4986
    :cond_3
    :goto_5
    if-nez v0, :cond_6

    .line 4987
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$1;

    invoke-direct {v5, p0, p1, p3, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;->getPublishHrefOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 5027
    if-eqz v0, :cond_4

    .line 5028
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->addComponentRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;J)V

    .line 5033
    :cond_4
    :goto_6
    return-void

    .line 4935
    :catch_0
    move-exception v0

    .line 4936
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXCompositeXfer.finalizeStagedComposite"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4957
    :catch_1
    move-exception v1

    .line 4958
    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v8, "AdobeDCXCompositeXfer.finalizeStagedComposite"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    .line 4963
    :catch_2
    move-exception v2

    move-object v2, p6

    .line 4964
    goto :goto_3

    :cond_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 4970
    goto/16 :goto_1

    .line 5030
    :cond_6
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->val$stageCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;

    const/4 v2, 0x0

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v4, 0x0

    .line 5031
    invoke-static {v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 5030
    invoke-interface {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_6

    .line 4980
    :catch_3
    move-exception v0

    goto :goto_5

    :cond_7
    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v0, p6

    goto :goto_4
.end method
