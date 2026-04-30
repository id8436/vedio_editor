.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static increment:Ljava/lang/Integer;

.field private static final lock:Ljava/lang/Object;

.field private static volatile transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    .line 352
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 354
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->lock:Ljava/lang/Object;

    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->postFailureOnPushCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)J
    .locals 2

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->getContentLength(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->postHeaderInfoForManifestResult(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 350
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->createRunnableForPostingAssetsSyncResult(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->postAssetsInSyncGroupResult(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;)V
    .locals 0

    .prologue
    .line 350
    invoke-static/range {p0 .. p11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->stageCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->createPublishJournalInStage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->resourcesPathAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->postFailureOnPullCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->increment:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 350
    sput-object p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->increment:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->executeBlockOnQueue(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 350
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->createRunnableForPostingHeaderInfoResult(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static adjustErrorFromPulledManifest(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
    .locals 5

    .prologue
    const/16 v2, 0x194

    const/4 v4, 0x0

    .line 2834
    .line 2836
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2837
    new-instance p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 2851
    :cond_0
    :goto_0
    return-object p0

    .line 2838
    :cond_1
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->isErrorDueToOfflineNetwork(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2839
    new-instance p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    goto :goto_0

    .line 2841
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2842
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    move-object p0, v0

    goto :goto_0

    .line 2843
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    .line 2844
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v0, v1, :cond_4

    .line 2845
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidRemoteManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    move-object p0, v0

    goto :goto_0

    .line 2846
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2847
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    move-object p0, v0

    goto/16 :goto_0
.end method

.method public static createCompositeAtPath(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 1

    .prologue
    .line 3925
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 3926
    invoke-static {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->createCompositeAtPathInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V

    .line 3927
    return-object v0
.end method

.method public static createCompositeAtPathInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 3935
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3936
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3941
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3943
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3944
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidPath:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v3, "snapshotPath is not a directory: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 3945
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3944
    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 3948
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 3950
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 3951
    const-string/jumbo v2, "manifest"

    invoke-static {p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3953
    :try_start_0
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 3959
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 3960
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v6, v0

    invoke-virtual {p4, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 3969
    :goto_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;

    move-object v3, p1

    move-object v5, p4

    move-object v6, p0

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;Landroid/os/Handler;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4086
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 4087
    return-void

    .line 3954
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 3955
    goto :goto_1

    .line 3963
    :cond_2
    const-wide/16 v6, -0x1

    invoke-virtual {p4, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static createPublishJournalInStage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4869
    .line 4870
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->publishJournalPathAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4872
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4873
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorNonEmptyStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 4889
    :cond_0
    throw v0

    .line 4877
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->journalPersistedAt(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 4881
    :goto_0
    if-nez v0, :cond_0

    .line 4882
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4883
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->recordAssetHref(Ljava/lang/String;)V

    .line 4885
    :cond_2
    return-object v1

    .line 4878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createRunnableForPostingAssetsSyncResult(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-object v0
.end method

.method private static createRunnableForPostingHeaderInfoResult(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-object v0
.end method

.method private static doArchive(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1801
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v1, :cond_0

    .line 1802
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDCXCompositeXfer"

    const-string/jumbo v2, "internalPushComposite is exiting with AdobeDCXErrorAttemptToArchiveIncomingShare"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorAttemptToArchiveIncomingShare:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v2, "It is not permitted to archive a composite that has been shared with the current user."

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)V

    throw v0

    .line 1807
    :cond_0
    invoke-interface {p2, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->archiveDCXComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    const-string/jumbo v0, "committedArchival"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeArchivalState(Ljava/lang/String;)V

    .line 1809
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->recordCompositeHasBeenArchived(Z)V

    .line 1812
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestBasePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1824
    :cond_1
    return-void

    .line 1813
    :catch_0
    move-exception v0

    .line 1815
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorManifestFinalWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    throw v0

    .line 1819
    :catch_1
    move-exception v0

    .line 1821
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFailedToStoreBaseManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    throw v0
.end method

.method public static downloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            ")",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2484
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2486
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "branch"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2487
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getWeakComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 2488
    if-nez v1, :cond_1

    .line 2496
    :goto_0
    return-object v0

    .line 2491
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 2494
    :goto_1
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The synchronous downloadComponents method is not supported when the composite\'s controller property is non-nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2491
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    goto :goto_1

    .line 2496
    :cond_3
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    invoke-static {p0, v1, v0, p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    goto :goto_0
.end method

.method public static downloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 2416
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static downloadComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 2468
    if-nez p5, :cond_0

    .line 2469
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2471
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method

.method private static executeBlockOnQueue(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3690
    if-eqz p1, :cond_0

    .line 3692
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3698
    :goto_0
    return-void

    .line 3696
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static finalizePullManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2857
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    .line 2859
    if-nez p2, :cond_3

    .line 2863
    if-eqz p3, :cond_2

    .line 2916
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    move v0, v5

    .line 2917
    :goto_1
    if-nez v0, :cond_b

    .line 2920
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->allComponentsHaveBeenAdded()V

    .line 2921
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPulledBranch()Z

    move-object v0, v3

    .line 2946
    :goto_2
    return-object v0

    :cond_2
    move-object p3, v2

    .line 2863
    goto :goto_0

    .line 2865
    :cond_3
    if-eqz p3, :cond_9

    .line 2869
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2876
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2881
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v0

    .line 2882
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2883
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2884
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2885
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 2886
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 2887
    if-eqz v1, :cond_7

    .line 2888
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2889
    :cond_6
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getState()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "committedDelete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2891
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v1

    invoke-interface {v1, v0, p3, p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Ljava/lang/String;

    move-result-object v0

    .line 2892
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2893
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2894
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 2900
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2901
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2902
    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updateLocalStorageDataInManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/util/List;)V

    .line 2903
    invoke-static {p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateUnmanagedComponents(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    move-object p3, p2

    .line 2904
    goto/16 :goto_0

    .line 2906
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2907
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2908
    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updateLocalStorageDataInManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/util/List;)V

    .line 2911
    invoke-static {p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateUnmanagedComponents(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    move-object p3, p2

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 2916
    goto/16 :goto_1

    .line 2929
    :cond_b
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestPath()Ljava/lang/String;

    move-result-object v0

    .line 2930
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2931
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2934
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2936
    :cond_c
    invoke-virtual {p3, v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z

    .line 2939
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestBasePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updatePulledBranchWithManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 2946
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    goto/16 :goto_2

    .line 2940
    :catch_0
    move-exception v0

    .line 2942
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFailedToStoreBaseManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    throw v0
.end method

.method public static getAssetsInSyncGroup(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 4246
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 4248
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    const-string/jumbo v2, "Inside getAssetsInSyncGroup"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 4250
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 4251
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$31;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$31;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;Landroid/os/Handler;)V

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-direct {v7, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 4270
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 4272
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4274
    return-object v1
.end method

.method private static getContentLength(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)J
    .locals 6

    .prologue
    .line 913
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v0

    .line 925
    :goto_0
    return-wide v0

    .line 923
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getCurrentManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2805
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrentManifestPath()Ljava/lang/String;

    move-result-object v1

    .line 2806
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2810
    :try_start_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    .line 2811
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updateCurrentBranchWithManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Z)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2822
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    .line 2812
    :catch_0
    move-exception v1

    .line 2814
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v2, v3, :cond_1

    .line 2815
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidLocalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getData()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    throw v2

    .line 2817
    :cond_1
    throw v1

    .line 2822
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPreviouslyPulledManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2775
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestPath()Ljava/lang/String;

    move-result-object v0

    .line 2776
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2782
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2789
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v3

    .line 2790
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 2791
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2794
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 2800
    :cond_0
    :goto_1
    return-object v0

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeDCXCompositeXfer.getPreviouslyPulledManifestOfComposite"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2800
    goto :goto_1
.end method

.method private static initialize()V
    .locals 8

    .prologue
    .line 359
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    if-nez v0, :cond_0

    .line 360
    const/4 v2, 0x5

    .line 361
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->increment:Ljava/lang/Integer;

    .line 366
    :cond_0
    return-void
.end method

.method private static internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;",
            ")",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 3067
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXCompositeXfer"

    const-string/jumbo v4, "Entered inside internalDownloadComponents"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestPath()Ljava/lang/String;

    move-result-object v10

    .line 3070
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrentManifestPath()Ljava/lang/String;

    move-result-object v2

    .line 3071
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v11

    .line 3072
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 3073
    if-nez v11, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3074
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v11

    .line 3078
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->getComponentManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentManagerProtocol;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    .line 3083
    :goto_0
    if-eqz p2, :cond_2

    const/4 v9, 0x1

    .line 3084
    :goto_1
    if-nez v9, :cond_d

    move-object v4, v11

    .line 3089
    :goto_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    const/4 v2, 0x0

    .line 3132
    if-eqz p0, :cond_c

    .line 3133
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3134
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3135
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3078
    :cond_1
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    goto :goto_0

    .line 3083
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v24, v6

    .line 3141
    :goto_4
    if-nez v4, :cond_4

    .line 3142
    const/4 v2, 0x0

    .line 3635
    :goto_5
    return-object v2

    .line 3144
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v2

    .line 3146
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    move-object/from16 v0, v25

    invoke-direct {v7, v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;-><init>(ILjava/util/ArrayList;)V

    .line 3157
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 3158
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3160
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3163
    :try_start_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3165
    if-eqz v24, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3167
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;->decrementPendingCountWithError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3600
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6

    .line 3171
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3173
    invoke-virtual {v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getUCIDOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v2

    .line 3587
    if-nez v5, :cond_6

    .line 3589
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    move-object/from16 v8, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    invoke-direct/range {v2 .. v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLjava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v8, v6, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->perform(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3600
    :goto_7
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6

    .line 3591
    :cond_6
    :try_start_2
    sget-object v8, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v12, "AdobeDCXCompositeXfer"

    const-string/jumbo v13, "calling requestFileToDownloadComponent inside internalDownloadComponents"

    invoke-static {v8, v12, v13}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithDownloadFile;

    move-object v13, v3

    move-object v14, v7

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, v11

    move-object/from16 v20, v10

    move/from16 v21, v9

    move-object/from16 v22, p1

    move-object/from16 v23, v5

    invoke-direct/range {v12 .. v23}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithDownloadFile;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;)V

    new-instance v18, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PullCancellationHandler;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PullCancellationHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;)V

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;->requestFileToDownloadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 3600
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3602
    throw v2

    .line 3605
    :cond_7
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;->waitForPendingOperations()V

    .line 3607
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 3610
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 3611
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3612
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v3

    .line 3614
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 3615
    if-eqz v3, :cond_9

    .line 3617
    const-string/jumbo v4, "AdobeErrorOtherErrorsKey"

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    :cond_8
    :goto_8
    throw v2

    .line 3619
    :cond_9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_8

    .line 3625
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->allComponentsHaveBeenAdded()V

    .line 3628
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXCompositeXfer"

    const-string/jumbo v5, "Exiting internalDownloadComponents"

    invoke-static {v2, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    if-eqz v9, :cond_b

    .line 3632
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updatePulledBranchWithManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 3633
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    goto/16 :goto_5

    .line 3635
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    goto/16 :goto_5

    :cond_c
    move-object/from16 v24, v2

    goto/16 :goto_4

    :cond_d
    move-object/from16 v4, p2

    goto/16 :goto_2
.end method

.method private static internalDownloadComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 2505
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2507
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "branch"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2508
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getWeakComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    .line 2510
    if-nez v4, :cond_2

    .line 2511
    const/4 v2, 0x0

    .line 2593
    :cond_1
    :goto_0
    return-object v2

    .line 2514
    :cond_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 2518
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v9

    .line 2519
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v10

    .line 2520
    if-eqz v10, :cond_3

    .line 2521
    new-instance v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$19;

    invoke-direct {v8, p3, v10, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$19;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V

    .line 2545
    :goto_1
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    .line 2547
    :goto_2
    new-instance v11, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;

    move-object v3, p0

    move-object v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;)V

    move-object/from16 v0, p5

    invoke-direct {v11, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 2585
    invoke-virtual {v2, v11}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 2587
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v1, v11}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2589
    if-eqz v10, :cond_1

    .line 2590
    invoke-virtual {v10, v9, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->reportDownloadComponentsStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    goto :goto_0

    :cond_3
    move-object v8, p3

    .line 2540
    goto :goto_1

    .line 2545
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v5

    goto :goto_2
.end method

.method private static internalPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;
    .locals 12

    .prologue
    .line 4655
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 4658
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 4659
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;

    move-object/from16 v3, p5

    move-object/from16 v4, p11

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;-><init>([ZLcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;Landroid/os/Handler;)V

    .line 4807
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;

    move-object v3, v0

    move-object/from16 v4, p8

    move-object v5, p0

    move-object/from16 v6, p5

    move-object v7, p1

    move-object/from16 v8, p4

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;)V

    .line 4809
    new-instance v10, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$37;

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v7, p6

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$37;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1InternalPublishImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)V

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-direct {v10, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 4853
    invoke-virtual {v2, v10}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 4854
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4856
    return-object v2
.end method

.method private static internalPullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3642
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$23;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$23;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    .line 3653
    invoke-static {p0, p1, p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    .line 3655
    if-eqz v1, :cond_0

    .line 3656
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-static {v0, p0, v1, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 3658
    :cond_0
    return-object v0
.end method

.method private static internalPullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3666
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$24;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$24;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Ljava/lang/String;)V

    .line 3677
    invoke-static {p0, p2, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    .line 3679
    if-eqz v1, :cond_0

    .line 3680
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-static {v0, p0, v1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 3682
    :cond_0
    return-object v0
.end method

.method private static internalPullCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9

    .prologue
    .line 2064
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2066
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "CSDK::Release::DCX"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inside pullComposite compositeId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 2071
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v6

    .line 2072
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v7

    .line 2073
    if-eqz v7, :cond_2

    .line 2074
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$14;

    invoke-direct {v5, p2, p0, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$14;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 2103
    :goto_1
    new-instance v8, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$15;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$15;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;)V

    invoke-direct {v8, v0, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 2140
    invoke-virtual {v1, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 2142
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2144
    if-eqz v7, :cond_0

    .line 2145
    invoke-virtual {v7, v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->reportPullStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 2148
    :cond_0
    return-object v1

    .line 2066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v5, p2

    .line 2099
    goto :goto_1
.end method

.method public static internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2953
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2954
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite.path"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2956
    :cond_1
    if-nez p3, :cond_2

    .line 2958
    new-instance p3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$22;

    invoke-direct {p3, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$22;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    .line 2971
    :cond_2
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->getCurrentManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 2972
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->getPreviouslyPulledManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v3

    .line 2974
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2975
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeHrefUnassigned:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    throw v0

    .line 2981
    :cond_3
    :try_start_0
    invoke-interface {p3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 2986
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2987
    :cond_4
    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->adjustErrorFromPulledManifest(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    move-result-object v0

    .line 2988
    throw v0

    .line 2982
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 2983
    goto :goto_0

    .line 2991
    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "committedDelete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2994
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v2, :cond_6

    .line 2996
    :try_start_1
    invoke-interface {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->leaveSharedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3008
    :goto_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorUnknownComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    throw v0

    .line 2997
    :catch_1
    move-exception v0

    .line 2998
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3003
    :cond_6
    :try_start_2
    invoke-interface {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->deleteComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3004
    :catch_2
    move-exception v0

    .line 3005
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3011
    :cond_7
    invoke-static {p0, p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->finalizePullManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 3013
    if-eqz v0, :cond_9

    .line 3015
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3016
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getMetadataComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 3017
    if-eqz v2, :cond_8

    .line 3018
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 3022
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-static {v1, p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalDownloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 3026
    :cond_9
    return-object v0
.end method

.method private static internalPullMinimalCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 10

    .prologue
    .line 2276
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2279
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$16;

    invoke-direct {v4, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$16;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    .line 2290
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 2293
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    .line 2294
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v8

    .line 2295
    if-eqz v8, :cond_1

    .line 2296
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$17;

    invoke-direct {v6, p2, v8, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$17;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 2323
    :goto_0
    new-instance v9, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$18;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$18;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;)V

    invoke-direct {v9, v0, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 2360
    invoke-virtual {v1, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 2362
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2363
    if-eqz v8, :cond_0

    .line 2364
    invoke-virtual {v8, v7, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->reportPullStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 2366
    :cond_0
    return-object v1

    :cond_1
    move-object v6, p2

    .line 2319
    goto :goto_0
.end method

.method public static internalPushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 1459
    sget-boolean v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "composite is null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1460
    :cond_0
    sget-boolean v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "composite.path is null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1461
    :cond_1
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "The start of internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushJournalPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->journalForCompositePersistedAt(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;

    move-result-object v7

    .line 1468
    if-nez p5, :cond_2

    .line 1470
    new-instance p5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$11;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$11;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    .line 1480
    :cond_2
    if-nez p1, :cond_3

    .line 1481
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "pushManifest is null and internalPushComposite is exiting"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    throw v4

    .line 1485
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setActivePushManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move v10, v4

    .line 1488
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1489
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "composite.getHref() is null and internalPushComposite is exiting"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeHrefUnassigned:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    throw v4

    .line 1487
    :cond_4
    const/4 v4, 0x0

    move v10, v4

    goto :goto_0

    .line 1493
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "committedDelete"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1494
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Composite State is AdobeDCXAssetStateCommittedDelete and internalPushComposite is exiting"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorDeletedComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    throw v4

    .line 1499
    :cond_6
    if-nez v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unmodified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1501
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeArchivalState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pendingArchival"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1502
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->doArchive(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;)V

    .line 1507
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->allComponentsHaveBeenAdded()V

    .line 1508
    const/4 v4, 0x1

    .line 1794
    :goto_2
    return v4

    .line 1505
    :cond_7
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Composite State is AdobeDCXAssetStateUnmodified and internalPushComposite is exiting"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1513
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pendingDelete"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v4

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v4, v5, :cond_9

    .line 1515
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "internalPushComposite is exiting with AdobeDCXErrorAttemptToDeleteIncomingShare"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorAttemptToDeleteIncomingShare:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v6, "It is not permitted to delete a composite that has been shared with the current user."

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)V

    throw v4

    .line 1526
    :cond_9
    const-string/jumbo v4, "committedDelete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeState(Ljava/lang/String;)V

    .line 1529
    if-nez v10, :cond_a

    .line 1530
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->updateManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object p1

    .line 1534
    :cond_a
    if-nez v10, :cond_b

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->deleteComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1535
    :cond_b
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->recordCompositeHasBeenDeleted(Z)V

    .line 1537
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeHref(Ljava/net/URI;)V

    .line 1539
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestBasePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1554
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->allComponentsHaveBeenAdded()V

    .line 1555
    const/4 v4, 0x1

    goto :goto_2

    .line 1540
    :catch_0
    move-exception v4

    .line 1542
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorManifestFinalWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v4, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    throw v4

    .line 1546
    :catch_1
    move-exception v4

    .line 1548
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFailedToStoreBaseManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestBasePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v4, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    throw v4

    .line 1560
    :cond_d
    if-eqz v10, :cond_12

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isCompositeHasBeenCreated()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1561
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "compositeIsNew is new inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v6, 0x0

    .line 1566
    const/4 v5, 0x0

    .line 1568
    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->createComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 1574
    :goto_3
    if-nez v4, :cond_11

    .line 1575
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v4, v5

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v4

    sget-object v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeAlreadyExists:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v4, v8, :cond_23

    .line 1576
    if-eqz p2, :cond_e

    .line 1577
    const/4 v4, 0x1

    .line 1593
    :goto_4
    if-nez v4, :cond_11

    .line 1594
    if-eqz v5, :cond_10

    throw v5

    .line 1569
    :catch_2
    move-exception v5

    .line 1571
    const/4 v4, 0x0

    goto :goto_3

    .line 1583
    :cond_e
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->getHeaderInfoForManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_3 .. :try_end_3} :catch_3

    move v4, v6

    .line 1590
    goto :goto_4

    .line 1584
    :catch_3
    move-exception v4

    .line 1585
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 1586
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "AdobeNetworkHTTPStatus"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v4

    const-string/jumbo v8, "AdobeNetworkHTTPStatus"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1587
    :goto_5
    const/16 v8, 0x194

    if-ne v4, v8, :cond_23

    .line 1588
    const/4 v4, 0x1

    goto :goto_4

    .line 1586
    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    .line 1595
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1599
    :cond_11
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->recordCompositeHasBeenCreated(Z)V

    .line 1605
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getRemoteData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v8, 0xa

    add-long v14, v4, v8

    .line 1606
    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    .line 1607
    const-wide/16 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 1611
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Entering pushComponentsInManifest inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    .line 1615
    invoke-static/range {v4 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->pushComponentsInManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    move v8, v4

    .line 1617
    :goto_6
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Exit from pushComponentsInManifest inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const/4 v12, 0x0

    .line 1620
    if-eqz v8, :cond_22

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 1621
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Obtained errors from pushComponentsInManifest inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1626
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v11

    .line 1627
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1629
    const/4 v13, 0x0

    .line 1630
    if-nez v10, :cond_21

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v5

    sget-object v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v5, v6, :cond_21

    .line 1632
    :try_start_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->getHeaderInfoForManifestOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_4 .. :try_end_4} :catch_4

    move v6, v13

    move-object v5, v12

    .line 1646
    :goto_7
    if-nez v6, :cond_20

    .line 1647
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1f

    .line 1648
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 1649
    const-string/jumbo v5, "AdobeErrorOtherErrorsKey"

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 1656
    :goto_8
    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createErrorWithCode(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/util/HashMap;)Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    move-result-object v4

    .line 1665
    :goto_9
    if-nez v8, :cond_1b

    .line 1666
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Trying to upload the manifest inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string/jumbo v4, "unmodified"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeState(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getRemoteData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v8, 0xa

    add-long/2addr v4, v8

    .line 1673
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v8

    sub-long v12, v4, v14

    add-long/2addr v8, v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    .line 1675
    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1676
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    .line 1685
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;

    invoke-direct {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;-><init>()V

    .line 1687
    sget-boolean v11, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v11, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getActivePushManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v11

    if-nez v11, :cond_17

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Unexpected composite state: activePushManifest should not be nil."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1615
    :cond_13
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_6

    .line 1633
    :catch_4
    move-exception v6

    .line 1634
    instance-of v5, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v5, :cond_14

    move-object v5, v6

    check-cast v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    check-cast v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v5

    sget-object v16, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-object/from16 v0, v16

    if-ne v5, v0, :cond_14

    move-object v5, v6

    move v6, v13

    .line 1635
    goto/16 :goto_7

    .line 1636
    :cond_14
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 1637
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v5

    const-string/jumbo v16, "AdobeNetworkHTTPStatus"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v5

    const-string/jumbo v6, "AdobeNetworkHTTPStatus"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1638
    :goto_a
    const/16 v6, 0x194

    if-ne v5, v6, :cond_21

    .line 1639
    const/4 v5, 0x1

    .line 1640
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorUnknownComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v12, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    move v6, v5

    move-object v5, v12

    goto/16 :goto_7

    .line 1637
    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    .line 1651
    :cond_16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1652
    const-string/jumbo v6, "AdobeErrorOtherErrorsKey"

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 1690
    :cond_17
    new-instance v11, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$12;

    invoke-direct {v11, v6, v9, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$12;-><init>(Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;Ljava/util/concurrent/locks/Condition;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;->perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v11

    .line 1708
    if-eqz v11, :cond_18

    .line 1709
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$13;

    invoke-direct {v12, v6, v9, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$13;-><init>(Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v11, v12}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->addCancellationHandler(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V

    .line 1720
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->addComponentRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;J)V

    .line 1726
    :cond_18
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1728
    :goto_b
    :try_start_5
    iget-boolean v4, v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;->done:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_19

    .line 1730
    :try_start_6
    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 1731
    :catch_5
    move-exception v4

    .line 1732
    :try_start_7
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v11, "AdobeDCXCompositeXfer.internalPushComposite"

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v11, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    .line 1735
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1736
    throw v4

    .line 1735
    :cond_19
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1738
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "upload of the manifest completed inside internalPushComposite"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v5, v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;->uploadedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 1741
    iget-object v4, v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1EnclosingClassForOutput;->manifestUploadError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1743
    if-eqz v5, :cond_1b

    .line 1744
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->allComponentsHaveBeenAdded()V

    .line 1745
    invoke-virtual {v7, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->recordUploadedManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 1748
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_8
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1755
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestBasePath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->writeToFile(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1764
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updatePushedBranchWithManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 1765
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, "AdobeDCXCompositeXfer"

    const-string/jumbo v8, "Exiting internalPushComposite with success"

    invoke-static {v4, v6, v8}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeArchivalState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "pendingArchival"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1769
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->doArchive(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;)V

    .line 1772
    :cond_1a
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1749
    :catch_6
    move-exception v4

    .line 1751
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorManifestFinalWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushedManifestPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    throw v4

    .line 1756
    :catch_7
    move-exception v4

    .line 1758
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFailedToStoreBaseManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulledManifestBasePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v4

    throw v4

    .line 1777
    :cond_1b
    if-eqz v10, :cond_1c

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1780
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->setCompositeHref(Ljava/lang/String;)V

    .line 1781
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->deleteComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    .line 1783
    :cond_1c
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1785
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->deleteFile()Z

    .line 1788
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1789
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, "AdobeDCXCompositeXfer"

    const-string/jumbo v7, "componentOrManifestUploadError inside internalPushComposite"

    invoke-static {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    throw v4

    .line 1793
    :cond_1e
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeDCXCompositeXfer"

    const-string/jumbo v6, "Exiting internalPushComposite with failure"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_1f
    move-object v5, v11

    goto/16 :goto_8

    :cond_20
    move-object v4, v5

    goto/16 :goto_9

    :cond_21
    move v6, v13

    move-object v5, v12

    goto/16 :goto_7

    :cond_22
    move-object v4, v12

    goto/16 :goto_9

    :cond_23
    move v4, v6

    goto/16 :goto_4
.end method

.method private static internalPushCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 14

    .prologue
    .line 790
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 792
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "CSDK::Release::DCX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside pushComposite compositeId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$6;

    move-object/from16 v0, p2

    invoke-direct {v8, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$6;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V

    .line 802
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pushComposite has been called with a composite that has uncommitted changes in its current branch.Uncommitted changes will not be included in the pushed composite."

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->copyCommittedManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 823
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v11

    .line 824
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v12

    .line 825
    if-eqz v12, :cond_4

    .line 826
    new-instance v10, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$7;

    move-object/from16 v0, p3

    invoke-direct {v10, v0, p0, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$7;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 855
    :goto_1
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 857
    new-instance v13, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$8;

    move-object v4, p0

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;)V

    move-object/from16 v0, p5

    invoke-direct {v13, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 896
    invoke-virtual {v3, v13}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 898
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v2, v13}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 900
    if-eqz v12, :cond_1

    .line 901
    invoke-virtual {v12, v11, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->reportPushStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 903
    :cond_1
    :goto_2
    return-object v3

    .line 792
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v2

    .line 816
    if-eqz p3, :cond_3

    .line 817
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->postFailureOnPushCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 818
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v10, p3

    .line 851
    goto :goto_1
.end method

.method private static internalRemixPublishedCompositeAtHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;)V
    .locals 12

    .prologue
    .line 4374
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-direct {v4, p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;Landroid/os/Handler;)V

    .line 4396
    new-instance v11, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$34;

    move-object/from16 v3, p6

    move-object/from16 v5, p4

    move-object v6, p0

    move-object v7, p3

    move-object v8, p1

    move-object/from16 v9, p5

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$34;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Ljava/lang/String;)V

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-direct {v11, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 4474
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 4475
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4476
    return-void
.end method

.method private static isErrorDueToOfflineNetwork(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2826
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 2827
    :goto_0
    instance-of v3, p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v3, :cond_3

    check-cast p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 2829
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 2826
    goto :goto_0

    :cond_3
    move v3, v2

    .line 2827
    goto :goto_1
.end method

.method private static postAssetsInSyncGroupResult(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 454
    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static postFailureOnPullCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$4;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;->onFailure(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method private static postFailureOnPushCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$3;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-interface {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;->onFailure(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method private static postHeaderInfoForManifestResult(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 444
    if-eqz p0, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static publishComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 13

    .prologue
    .line 4507
    const-string/jumbo v1, "composite"

    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4508
    const-string/jumbo v1, "remixData"

    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4509
    const-string/jumbo v1, "publicationRecord"

    invoke-static {p2, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4510
    const-string/jumbo v1, "stageDirPath"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4511
    const-string/jumbo v1, "publishSession"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4512
    const-string/jumbo v1, "completionHandler"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4515
    const/4 v1, 0x0

    .line 4517
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    .line 4518
    invoke-static {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeBranchWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4523
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getMetadata()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    move-result-object v1

    return-object v1

    .line 4519
    :catch_0
    move-exception v2

    .line 4520
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeDCXCompositeXfer.publishComposite"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static publishJournalPathAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4860
    const-string/jumbo v0, "publish.journal"

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pullComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            ")",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2766
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2769
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2770
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 2771
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->downloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0

    .line 2770
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    goto :goto_0
.end method

.method public static pullComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 2686
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2687
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2688
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 2689
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->downloadComponents(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0

    .line 2688
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    goto :goto_0
.end method

.method public static pullComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 2748
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2749
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2750
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2751
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->downloadComponentsWithPriority(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0

    .line 2750
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    goto :goto_0
.end method

.method public static pullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2053
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The synchronous pullComposite method is not supported when the composite\'s controller property is non-nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2055
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2056
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 2057
    invoke-static {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method public static pullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 1927
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static pullCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 2033
    if-nez p4, :cond_0

    .line 2034
    sget-object p4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 2036
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static pullHeaderInfoForManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 7

    .prologue
    .line 4199
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 4201
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "CSDK::Release::DCX"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inside pullHeaderInfoForManifest compositeId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 4204
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$30;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$30;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Landroid/os/Handler;)V

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-direct {v6, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 4223
    invoke-virtual {v1, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 4225
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4227
    return-object v1

    .line 4201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 2611
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The synchronous pullMinimalComposite method is not supported when the composite\'s controller property is non-nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2613
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 2615
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$21;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$21;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;)V

    .line 2625
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 2626
    invoke-static {p0, p1, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    return-object v0
.end method

.method public static pullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 2207
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static pullMinimalCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 2267
    if-nez p4, :cond_0

    .line 2268
    sget-object p4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 2270
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method private static pushComponentsInManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Ljava/util/ArrayList;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 932
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getActivePushManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Unexpected composite state: activePushManifest should not be nil."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 938
    :cond_0
    new-instance v11, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    .line 939
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 942
    invoke-interface/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->getComponentManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentManagerProtocol;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v5, 0x0

    .line 960
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v2

    .line 962
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 963
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 964
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 966
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 968
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getUCIDOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v8

    .line 969
    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 971
    :goto_2
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    .line 972
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXInvalidComponentManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v4, "no component manager found that is able to handle unmanaged component %s with UCID : %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 973
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v9

    const/4 v6, 0x1

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 942
    :cond_2
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    goto :goto_0

    .line 969
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 978
    :cond_4
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->isBound()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v10, 0x1

    .line 979
    :goto_3
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getState()Ljava/lang/String;

    move-result-object v2

    .line 982
    if-nez v2, :cond_5

    .line 983
    const-string/jumbo v2, "unmodified"

    .line 988
    :cond_5
    if-nez v10, :cond_6

    const-string/jumbo v3, "modified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 992
    :cond_6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorage()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v6, v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;->getPathOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)Ljava/lang/String;

    move-result-object v2

    .line 993
    if-eqz v2, :cond_7

    .line 994
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_7

    .line 996
    const/4 v2, 0x0

    .line 1003
    :cond_7
    if-nez v2, :cond_9

    const-string/jumbo v9, ""

    .line 1004
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getSourceHrefOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v19

    .line 1006
    if-nez v4, :cond_a

    if-nez v2, :cond_a

    if-nez v19, :cond_a

    .line 1007
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorComponentReadFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v3, "Component %s,%s of composite %s has neither a local storage file nor a source href."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1008
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1007
    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 978
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 998
    :catch_0
    move-exception v2

    .line 999
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move-object v9, v2

    .line 1003
    goto :goto_4

    .line 1013
    :cond_a
    if-nez v19, :cond_b

    if-eqz v2, :cond_b

    .line 1017
    invoke-virtual {v11, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->hrefWithImmutableLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1020
    :cond_b
    if-eqz v19, :cond_c

    .line 1228
    :cond_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v12

    .line 1229
    if-eqz v12, :cond_11

    .line 1231
    move-object/from16 v0, p1

    invoke-static {v9, v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->getContentLength(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)J

    move-result-wide v2

    .line 1233
    invoke-virtual {v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getLength()J

    move-result-wide v14

    .line 1234
    cmp-long v2, v14, v2

    if-eqz v2, :cond_d

    if-eqz v4, :cond_f

    .line 1235
    :cond_d
    invoke-virtual {v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->addPendingComponent()V

    .line 1293
    if-nez v4, :cond_e

    .line 1294
    const/4 v15, 0x0

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$9;

    move-object/from16 v7, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-direct/range {v2 .. v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$9;-><init>(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    invoke-static {v9, v15, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashOfFile(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V

    goto/16 :goto_1

    .line 1316
    :cond_e
    new-instance v13, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithUploadFileMD5CompletionHandler;

    move-object v14, v11

    move-object v15, v6

    move-object/from16 v16, p1

    move-object/from16 v17, v12

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v23, p2

    move-object/from16 v24, p4

    invoke-direct/range {v13 .. v24}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithUploadFileMD5CompletionHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;Ljava/lang/String;ZZLjava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    new-instance v10, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PushCancellationHandler;

    move-object/from16 v0, p1

    invoke-direct {v10, v6, v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PushCancellationHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    move-object/from16 v7, p1

    move-object v9, v13

    invoke-virtual/range {v5 .. v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;->requestFileToUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithUploadFileCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V

    goto/16 :goto_1

    .line 1327
    :cond_f
    if-eqz v19, :cond_12

    .line 1329
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getSourceHrefForUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    if-eqz v2, :cond_12

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1332
    if-eqz v10, :cond_10

    .line 1333
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->componentWasAdded(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_1

    .line 1335
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->componentWasUpdated(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_1

    .line 1341
    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 1368
    :cond_12
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->addPendingComponent()V

    .line 1370
    if-eqz v19, :cond_13

    .line 1371
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1copyServerAssetResource;

    move-object v13, v6

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v16, v4

    move-object/from16 v17, v11

    move-object/from16 v18, p2

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1copyServerAssetResource;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Ljava/lang/String;Z)V

    invoke-virtual {v12, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1copyServerAssetResource;->perform(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1374
    :cond_13
    if-eqz v4, :cond_14

    .line 1376
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithUploadFileCompletionHandler;

    move-object v13, v11

    move-object v14, v6

    move-object/from16 v15, p1

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, p2

    move-object/from16 v21, p4

    invoke-direct/range {v12 .. v21}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1ReadyWithUploadFileCompletionHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)V

    new-instance v10, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PushCancellationHandler;

    move-object/from16 v0, p1

    invoke-direct {v10, v6, v11, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PushCancellationHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    move-object/from16 v7, p1

    move-object v9, v12

    invoke-virtual/range {v5 .. v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;->requestFileToUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithUploadFileCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V

    goto/16 :goto_1

    .line 1382
    :cond_14
    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    move-object v13, v6

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, p2

    move/from16 v20, v10

    move-object/from16 v21, v8

    invoke-direct/range {v12 .. v21}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;ZLjava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->perform(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1387
    :cond_15
    const-string/jumbo v3, "unmodified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1389
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    goto/16 :goto_1

    .line 1390
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "pendingDelete"

    .line 1391
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "committedDelete"

    .line 1392
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1397
    :cond_17
    invoke-virtual {v11, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    goto/16 :goto_1

    .line 1400
    :cond_18
    const-string/jumbo v3, "pendingDelete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1403
    invoke-virtual {v11, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->componentWasCommittedForDelete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    goto/16 :goto_1

    .line 1407
    :cond_19
    const-string/jumbo v3, "committedDelete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->componentHasBeenDeleted(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1413
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->addPendingComponent()V

    .line 1415
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$10;

    invoke-direct {v2, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$10;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v6, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->deleteComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto/16 :goto_1

    .line 1432
    :cond_1a
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->waitImpl()V

    .line 1434
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->getErrors()Ljava/util/ArrayList;

    move-result-object v2

    .line 1435
    if-nez v2, :cond_1b

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 1436
    :cond_1b
    if-eqz p5, :cond_1d

    .line 1437
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->clear()V

    .line 1438
    if-eqz v2, :cond_1c

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1439
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1441
    :cond_1d
    const/4 v2, 0x0

    .line 1448
    :goto_5
    return v2

    .line 1444
    :cond_1e
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXCompositeXfer"

    const-string/jumbo v4, "pushComponentsInManifest exiting with success"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->updateManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1447
    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->releaseRequest()V

    .line 1448
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public static pushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    .line 593
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPushCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static pushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 748
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The synchronous pushComposite method is not supported when the composite\'s controller property is non-nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    .line 753
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 756
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V

    .line 764
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDCXCompositeXfer"

    const-string/jumbo v2, "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. Uncommitted changes will not be included in the pushed composite."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->copyCommittedManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 781
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 783
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;)Z

    move-result v0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v1, v2, :cond_3

    .line 777
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidLocalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getData()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    throw v1

    .line 779
    :cond_3
    throw v0
.end method

.method public static pushCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    .line 729
    if-nez p5, :cond_0

    .line 730
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 732
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPushCompositeWithPriority(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method

.method public static remixPublishedCompositeAtHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9

    .prologue
    .line 4306
    const-string/jumbo v0, "publishHref"

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4307
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4308
    const-string/jumbo v0, "stageDir"

    invoke-static {p3, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4309
    const-string/jumbo v0, "publishSession"

    invoke-static {p4, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4311
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 4313
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 4314
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalRemixPublishedCompositeAtHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;)V

    .line 4315
    return-object v6
.end method

.method private static resourcesPathAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4864
    const-string/jumbo v0, "resources"

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resumePublishFromStageDirectory(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 4602
    const-string/jumbo v1, "stageDirPath"

    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4603
    const-string/jumbo v1, "publishSession"

    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4604
    const-string/jumbo v1, "completionHandler"

    invoke-static {p3, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4612
    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->publishJournalPathAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->journalFromFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v1, v0

    .line 4616
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->stageIsComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4618
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->compositeStoredAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 4624
    :goto_1
    if-eqz v6, :cond_0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, p0

    move-object v8, p1

    move-object v9, v0

    move-object v10, p2

    move-object v11, p3

    .line 4625
    invoke-static/range {v0 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    move-result-object v0

    .line 4643
    :goto_2
    return-object v0

    .line 4613
    :catch_0
    move-exception v1

    move-object v7, v0

    .line 4614
    goto :goto_0

    .line 4619
    :catch_1
    move-exception v1

    move-object v6, v0

    .line 4620
    goto :goto_1

    .line 4628
    :cond_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 4629
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$35;

    invoke-direct {v1, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$35;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V

    .line 4636
    if-eqz p2, :cond_1

    .line 4637
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4643
    :goto_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    goto :goto_2

    .line 4639
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_3

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public static resumeRemixPublishedCompositeFromStageDirectory(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 4340
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4341
    const-string/jumbo v0, "stageDir"

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4342
    const-string/jumbo v0, "publishSession"

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4344
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;-><init>()V

    .line 4348
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->compositeStoredAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4366
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalRemixPublishedCompositeAtHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;)V

    .line 4367
    :goto_0
    return-object v6

    .line 4349
    :catch_0
    move-exception v0

    .line 4350
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 4351
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;

    invoke-direct {v1, p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V

    .line 4358
    if-eqz p3, :cond_0

    .line 4359
    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4361
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method private static stageCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;)V
    .locals 16

    .prologue
    .line 4900
    new-instance v13, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$38;

    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-direct {v13, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$38;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;Landroid/os/Handler;)V

    .line 4923
    if-eqz p2, :cond_3

    const/4 v12, 0x1

    .line 5295
    :goto_0
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p8

    move-object/from16 v9, p2

    move-object/from16 v10, p10

    move-object/from16 v11, p3

    move-object/from16 v14, p9

    move-object/from16 v15, p0

    invoke-direct/range {v3 .. v15}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 5297
    if-eqz v12, :cond_5

    .line 5300
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPullMinimalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestDownload;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v4

    .line 5301
    if-nez v4, :cond_0

    .line 5303
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v4

    .line 5305
    :cond_0
    if-nez v4, :cond_1

    .line 5307
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 5309
    :cond_1
    if-eqz v4, :cond_2

    .line 5310
    if-eqz p5, :cond_4

    :goto_1
    move-object/from16 v0, p5

    invoke-static {v3, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->access$2100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 5318
    :cond_2
    :goto_2
    return-void

    .line 4923
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 5310
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMetadata()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->createRemixData()Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p5

    goto :goto_1

    .line 5312
    :catch_0
    move-exception v3

    .line 5313
    const/4 v4, 0x0

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorInvalidStageDirectory:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v3

    invoke-interface {v13, v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXStageCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_2

    .line 5316
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v3, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;->access$2100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1StageCompositeBranchImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    goto :goto_2
.end method

.method public static transferQueue()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->initialize()V

    .line 371
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->transferQueue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    return-object v0
.end method

.method public static updateOrdinalOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXOrdinalUpdateCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 2

    .prologue
    .line 4170
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$29;

    invoke-direct {v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$29;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXOrdinalUpdateCompletionHandler;)V

    invoke-virtual {p1, v0, v1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->updateOrdinalOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static updateOrdinalOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 4153
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->updateOrdinalOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    return v0
.end method

.method public static updateOrdinalsOfComposites(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXOrdinalUpdateCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXOrdinalUpdateCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 4122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4124
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 4125
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 4126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4129
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$28;

    invoke-direct {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$28;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXOrdinalUpdateCompletionHandler;)V

    invoke-virtual {p1, v1, v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->updateOrdinalsOfAssets(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXMultiAssetCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method

.method public static updateOrdinalsOfComposites(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 4099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4101
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 4102
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 4103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4106
    :cond_0
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->updateOrdinalsOfAssets(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static updatePublishedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 13

    .prologue
    .line 4566
    const-string/jumbo v1, "publishedComposite"

    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4567
    const-string/jumbo v1, "modifiedComposite"

    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4568
    const-string/jumbo v1, "stageDirPath"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4569
    const-string/jumbo v1, "publishSession"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4570
    const-string/jumbo v1, "completionHandler"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4572
    const/4 v1, 0x0

    .line 4574
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    .line 4575
    invoke-static {p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeBranchWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4580
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getMetadata()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->internalPublish(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeCommunitySessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishMetadataHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    move-result-object v1

    return-object v1

    .line 4576
    :catch_0
    move-exception v2

    .line 4577
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeDCXCompositeXfer.updatePublishedComposite"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static writeSnapshotOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 9

    .prologue
    .line 3705
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3706
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3707
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3709
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v3

    .line 3710
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 3711
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 3713
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$25;

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$25;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;Landroid/os/Handler;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3833
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 3834
    return-object v1
.end method

.method public static writeSnapshotOfCompositeBranchToArchive(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 9

    .prologue
    .line 3842
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3843
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3844
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3846
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v1

    .line 3847
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 3848
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 3850
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;-><init>(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;Landroid/os/Handler;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3917
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 3918
    return-object v2
.end method
