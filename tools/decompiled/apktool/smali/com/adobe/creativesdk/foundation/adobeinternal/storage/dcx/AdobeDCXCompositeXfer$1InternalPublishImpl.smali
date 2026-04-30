.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"


# instance fields
.field final synthetic val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

.field final synthetic val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

.field final synthetic val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

.field final synthetic val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

.field final synthetic val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

.field final synthetic val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

.field final synthetic val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$remixData:Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;

.field final synthetic val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field final synthetic val$stageDirPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4696
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$stageDirPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$remixData:Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;

    iput-object p9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    iput-object p10, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 0

    .prologue
    .line 4696
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->doPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 0

    .prologue
    .line 4696
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->doPush(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 0

    .prologue
    .line 4696
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->doStage(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    return-void
.end method

.method private doPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 4700
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4701
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    invoke-interface {v0, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 4749
    :goto_0
    return-void

    .line 4703
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->publicationRecordData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->assetHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4705
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->assetHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0

    .line 4711
    :cond_1
    const/16 v0, 0x3e8

    .line 4712
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 4714
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    .line 4715
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 4721
    :goto_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->assetHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->assetHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->publicationRecordData()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$1;

    invoke-direct {v3, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;->updateCompositePublishedAt(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 4747
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1, v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->addComponentRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;J)V

    goto :goto_0

    .line 4717
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    goto :goto_1

    .line 4735
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4736
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->publicationRecordData()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$2;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    .line 4735
    invoke-interface/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;->publishCompositeUploadedTo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishHrefCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_2
.end method

.method private doPush(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4753
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    invoke-interface {v0, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 4786
    :goto_0
    return-void

    .line 4757
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;)Z

    .line 4759
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4760
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4779
    :catch_0
    move-exception v0

    .line 4780
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4781
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    invoke-interface {v0, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0

    .line 4763
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->publicationRecordData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$3;

    invoke-direct {v4, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;->updatePublicationRecordData(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublicationRecordDataCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4783
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishCompletionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    invoke-interface {v1, v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method private doStage(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V
    .locals 12

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$sourceBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$stageDirPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$remixData:Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$metadata:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$metadataHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$publishSession:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;

    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const/4 v10, 0x0

    new-instance v11, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$4;

    invoke-direct {v11, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;)V

    move-object v3, p1

    invoke-static/range {v0 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$1600(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;)V

    .line 4804
    return-void
.end method
