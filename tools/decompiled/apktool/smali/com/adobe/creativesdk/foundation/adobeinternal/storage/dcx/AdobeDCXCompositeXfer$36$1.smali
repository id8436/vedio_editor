.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;

.field final synthetic val$assetHref:Ljava/lang/String;

.field final synthetic val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 4678
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->val$assetHref:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    if-eqz v0, :cond_0

    .line 4682
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->val$assetHref:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$36$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPublishCompletionHandler;->onComplete(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 4683
    :cond_0
    return-void
.end method
