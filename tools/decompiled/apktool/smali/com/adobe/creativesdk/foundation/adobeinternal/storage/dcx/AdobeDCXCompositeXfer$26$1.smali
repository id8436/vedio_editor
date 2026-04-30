.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

.field final synthetic val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 3903
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_1

    .line 3907
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;->onFailure(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3911
    :cond_0
    :goto_0
    return-void

    .line 3909
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;->onSuccess()V

    goto :goto_0
.end method
