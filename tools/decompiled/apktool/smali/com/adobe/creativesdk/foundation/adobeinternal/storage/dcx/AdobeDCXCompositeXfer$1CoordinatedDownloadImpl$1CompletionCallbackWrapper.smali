.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

.field final synthetic val$isUnmanaged:Z

.field final synthetic val$newUCID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3193
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->val$isUnmanaged:Z

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->val$newUCID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method perform(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 3195
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->val$isUnmanaged:Z

    if-eqz v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$fComponentManagerWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$pulledComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->val$newUCID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;->didDownloadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3198
    :cond_0
    return-void
.end method
