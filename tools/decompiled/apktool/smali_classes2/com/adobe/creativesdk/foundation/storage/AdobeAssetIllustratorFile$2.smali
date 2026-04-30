.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;
.super Ljava/lang/Object;
.source "AdobeAssetIllustratorFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

.field final synthetic val$aiFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$aiFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "Product Saves"

    const-string/jumbo v1, "Creative Cloud"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$aiFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$2;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 179
    return-void
.end method
