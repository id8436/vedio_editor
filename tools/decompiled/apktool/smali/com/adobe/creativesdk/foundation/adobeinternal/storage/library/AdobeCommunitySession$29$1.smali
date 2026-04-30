.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;)V
    .locals 0

    .prologue
    .line 2355
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;->val$handler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->access$1000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;Landroid/os/Handler;)V

    .line 2359
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 2

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$29;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;->onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2364
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 2369
    return-void
.end method
